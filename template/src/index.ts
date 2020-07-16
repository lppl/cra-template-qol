import App from "./components/App";
import reportWebVitals from "./reportWebVitals";
import { render } from "utils/render";

const container = document.getElementById("root");
const preloader = document.getElementById("preloader");

if (!container) {
  throw new Error("Application container does not exist.");
}

if (!preloader) {
  throw new Error("Application preloader does not exist.");
}

render({
  application: App,
  container,
  onload: () => preloader.remove(),
});

reportWebVitals(({ name, value }) => console.log("web vitals: ", name, value));
