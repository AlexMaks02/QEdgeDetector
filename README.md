# QEdgeDetector
Quantum Edge Detection


Emulates a Quantum Sobel Edge Detector in your local machine.
It explores quantum image encoding and conducts a pilot test based on the ”Quantum Edge Detection” work available in the Qiskit textbook [1]. The test employs a quantum algorithm for edge detection (QHED) utilizing the Hadamard gate and an extra qubit. The algorithm encodes pixel values into quantum state amplitudes and applies the Hadamard gate to extract image edges. The implementation is carried out on a quantum simulator demonstrating the results obtain with quantum computing in edge detection.


![Original Image](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/Original_Image.png)

**Real Horizontal Circuit**

![Real Horizontal Circuit](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/real_horizontal_circuit.png)



## Install required packages

Install dependencies with the following command:

```bash
pip install -r requirements.txt
```



## Citation

If you find our work helpful in your research, please cite it as:

[Quantum edge detection](https://github.com/Qiskit/textbook/blob/main/notebooks/ch-applications/quantum-edge-detection.ipynb) Last accessed 27 December 2023.

