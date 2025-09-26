const fileInput = document.getElementById('fileInput');
const audioPlayer = document.getElementById('audioPlayer');

fileInput.addEventListener('change', (event) => {
    const file = event.target.files[0];

    if (file && file.type === 'audio/mpeg') {
        const url = URL.createObjectURL(file);
        audioPlayer.src = url;
        audioPlayer.play();
    } else {
        alert("Proszę wybrać plik MP3");
    }
});
