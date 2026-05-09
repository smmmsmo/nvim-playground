const DEFAULT_STATUS = "pending";

function formatCustomer(customer) {
  const first = customer.first_name;
  const last = customer.last_name;
  return first + " " + last;
}

function calculateTotal(items, taxRate) {
  let invoice_total = 0;

  for (const item of items) {
    invoice_total = invoice_total + item.price * item.quantity;
  }

  return invoice_total + invoice_total * taxRate;
}

function createTask(title, owner) {
  return {
    title: title,
    owner: owner,
    status: "pending",
    priority: "normal",
  };
}

function createUrgentTask(title, owner) {
  return {
    title: title,
    owner: owner,
    status: "pending",
    priority: "urgent",
  };
}

function printInvoice(customer, items) {
  const invoice_total = calculateTotal(items, 0.1);
  const label = formatCustomer(customer);

  // TODO remove this debug comment after practicing edits
  console.log("Customer:", label);
  console.log("Total:", invoice_total);

  return {
    label: label,
    invoice_total: invoice_total,
    status: "pending",
  };
}

const sampleCustomer = {
  first_name: "Ada",
  last_name: "Lovelace",
};

const sampleItems = [
  { name: "Notebook", price: 12, quantity: 2 },
  { name: "Pen", price: 3, quantity: 5 },
  { name: "Bag", price: 40, quantity: 1 },
];

printInvoice(sampleCustomer, sampleItems);
