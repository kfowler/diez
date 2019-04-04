import {Component} from '@livedesigner/engine';

class ConcreteComponent extends Component {}

interface AdaptedWindow extends Window {
  tick (time: number): void;
  trigger (name: string, payload?: any): void;
  componentName: string;
  component: Component;
}

const adaptedWindow = window as AdaptedWindow;

const getComponentDefinition = async (): Promise<typeof ConcreteComponent> => {
  const componentFile = await import(`@/${adaptedWindow.componentName}`) as any;
  return componentFile[adaptedWindow.componentName];
};

if (module.hot) {
  module.hot.accept();
}

(async () => {
  const constructor = await getComponentDefinition();
  adaptedWindow.component = new constructor();
  adaptedWindow.component.dirty();
})();

adaptedWindow.tick = (time) => adaptedWindow.component && adaptedWindow.component.tick(time);
adaptedWindow.trigger = (name, payload) => adaptedWindow.component && adaptedWindow.component.trigger(name, payload);