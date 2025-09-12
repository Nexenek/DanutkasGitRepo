function zastosujEfekt() {
    const zdjecie = document.querySelector('img[src="pszczola.jpg"]');
    const efekty = document.querySelectorAll('input[name="opcja"]');
    efekty.forEach((efekt) => {
        if (efekt.checked) {
}