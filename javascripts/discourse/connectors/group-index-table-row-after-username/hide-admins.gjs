import Component from "@glimmer/component";
import { action } from "@ember/object";
import didInsert from "@ember/render-modifiers/modifiers/did-insert";

export default class HideGroupAdmins extends Component {
  @action
  hideRow(element) {
    const usersArray = settings.hide_admin_users.split("|");
    if (usersArray.includes(this.args.outletArgs.member.username)) {
      element.closest(".directory-table__row")?.classList.add("hidden");
    }
  }

  <template>
    {{! class=hidden keeps this div out of the row's grid layout }}
    <div class="hidden" {{didInsert this.hideRow}}></div>
  </template>
}
