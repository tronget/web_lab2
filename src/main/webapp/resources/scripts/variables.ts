export const xContainer: HTMLElement = document.querySelector(".x_container");
export const yContainer: HTMLElement = document.querySelector(".y_container");
export const rContainer: HTMLElement = document.querySelector(".r_container");
export const xSelect = document.getElementById("x_select") as HTMLSelectElement;
export const yInput = document.getElementById("y_input") as HTMLInputElement;
export const rCheckboxes: HTMLInputElement[] = Array.from(
  document.querySelectorAll(".checkbox"),
);
export const form = document.getElementById("form") as HTMLFormElement;
export const table = document.getElementById("myTable");
export const svgArea = document.getElementById("svgArea");