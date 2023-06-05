document.querySelector('.add_btn').addEventListener('click', () => {
  const newForm = document.createElement('.add_input');
  newForm.type = 'text';

  const newLabel = document.createElement('.add_label');
  newLabel.textContent = '追加する：';

  newLabel.appendChild(newForm);
  document.querySelector('.add_field').appendChild(newLabel);
});