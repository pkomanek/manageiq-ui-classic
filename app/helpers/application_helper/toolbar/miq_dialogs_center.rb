class ApplicationHelper::Toolbar::MiqDialogsCenter < ApplicationHelper::Toolbar::Basic
  button_group('miq_dialog_vmdb', [
    select(
      :miq_dialog_vmdb_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :old_dialogs_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Dialog'),
          t,
          :klass => ApplicationHelper::Button::ButtonNewDiscover),
        button(
          :old_dialogs_edit,
          'pficon pficon-edit fa-lg',
          t = N_('Edit the selected Dialog'),
          t,
          :klass        => ApplicationHelper::Button::OldDialogsEditDelete,
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1"),
        button(
          :old_dialogs_copy,
          'fa fa-files-o fa-lg',
          t = N_('Copy the selected Dialog to a new Dialog'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1"),
        button(
          :old_dialogs_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Remove selected Dialogs'),
          t,
          :klass        => ApplicationHelper::Button::OldDialogsEditDelete,
          :url_parms    => "main_div",
          :send_checked => true,
          :confirm      => N_("Warning: The selected Dialog will be permanently removed!"),
          :enabled      => false,
          :onwhen       => "1+"),
      ]
    ),
  ])
end
