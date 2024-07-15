import { default as axios } from "axios";

const baseUrl = "https://fastdelivery-admin.lojadodesenvolvedor.com/api/v1";

let config = {};
config = await axios(`${baseUrl}/config`).then(async (resp) => resp.data);

console.log("config", config);

await axios(`${baseUrl}/categories`).then(async (resp) => {
  const category = $("[data-categories]");
  category.empty();
  resp.data.map((item) =>
    category.append(
      $("<li/>", {
        class: "text-center rounded-lg flex flex-col overflow-hidden space-y-4 hover:bg-green-100 hover:cursor-pointer",
        html: [
          $("<div/>", {
            class: "h-32 relative overflow-hidden rounded-lg",
            html: $("<img/>", {
              class: "h-32 object-fill",
              src: `${config["base_urls"]["category_image_url"]}/${item.image}`,
              alt: item.name,
            }),
          }),
          $("<span/>", { html: item.name, class: "font-semibold p-4" }),
        ],
      })
    )
  );
});

$(function () {});
