import Component from "@glimmer/component";
// import { inject as service } from "@ember/service";
import { action } from '@ember/object';

export default class AboutTextComponent extends Component {

  @action
  hideAdmins() {
    const usersArray = settings.hide_admin_users.split("|");
    for (const user of usersArray) {
      const e = document.querySelector(`div[data-username='${user}']`);
      if (e){
        e.classList.add("hidden");
      }
    }
  }
}
