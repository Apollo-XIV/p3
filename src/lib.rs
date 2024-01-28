pub mod app;
pub mod components;
#[cfg(feature = "ssr")]
pub mod database;
pub mod models;
pub mod routes;
use cfg_if::cfg_if;

cfg_if! {
if #[cfg(feature = "hydrate")] {

  use wasm_bindgen::prelude::wasm_bindgen;

    #[wasm_bindgen]
    pub fn hydrate() {
      use app::*;
      use leptos::*;

      console_error_panic_hook::set_once();

      leptos::mount_to_body(App);
    }
}
}

#[cfg(feature = "ssr")]
const DATE_FORMAT: &str = "%d/%m/%Y %H:%M";
