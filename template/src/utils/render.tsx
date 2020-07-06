import React, { FC } from 'react';
import ReactDom from 'react-dom';

export const render = ({
  application: App,
  container,
  onload,
}: {
  application: FC;
  container: HTMLElement;
  onload: () => void;
}) => {
  ReactDom.render(<App />, container, onload);
};
