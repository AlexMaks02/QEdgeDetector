# QEdgeDetector
Quantum Edge Detection


Emulates a Quantum Sobel Edge Detector in your local machine.
It explores quantum image encoding and conducts a pilot test based on the ”Quantum Edge Detection” work available in the Qiskit textbook [1]. The test employs a quantum algorithm for edge detection (QHED) utilizing the Hadamard gate and an extra qubit. The algorithm encodes pixel values into quantum state amplitudes and applies the Hadamard gate to extract image edges. The implementation is carried out on a quantum simulator demonstrating the results obtain with quantum computing in edge detection.

## Implementation Details
Defining the parameters for the quantum circuit of the QHED algorithm and creating instances of horizontal and vertical scan circuits, we can express the operations for state-preparation and the decrement gate as follows for both the Horizontal and Vertical scans:

_Horizontal Scan:_
  - State Preparation $\big ( \big| \mathrm{Img} \big> = \big| 01 \big > \big)$: We can achieve this with a simple $[X(1)]$ operation.
  - Decrement gate: We can achieve this by a sequence of $[X(0), CX(0,1), CCX(0,1,2)]$ operations.

_Vertical Scan:_
  - State Preparation $\big ( \big| \mathrm{Img} \big> = \big| 10 \big > \big)$: We can achieve this with a simple $[X(2)]$ operation.
  - Decrement gate: We can achieve this by a sequence of $[X(0), CX(0,1), CCX(0,1,2)]$ operations.

**Real Horizontal Circuit**
![Real Horizontal Circuit](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/real_horizontal_circuit.png)

**Reak Vertical Circuit**
![Real Vertical Circuit](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/real_vertical_circuit.png)

**Original Image**
![Original Image](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/img03_grayScale.png)

**Sobel Edge Detector**
![Sobel Edge Detector](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/img03_Sobel.png)

**Quantum Sobel Edge Detector**
![Quantum Sobel Edge Detector](https://github.com/AlexMaks02/QEdgeDetector/blob/main/figs/img03_QSobel.png)


## Install required packages

Install dependencies with the following command:

```bash
pip install -r requirements.txt
```

## Conclusions:
In conclusion, quantum computing and its applications for image processing show promise but are not yet mature enough. Substantial research and development are needed for the performance and accuracy benefits to surpass what we currently achieve with classical computing. However, the potential is considerable. The primary challenges in Quantum Image Processing (QIP) revolve around the complex task of accurately encoding and decoding pixel values into quantum states and the limited hardware in current quantum computers.

Concerning Quantum Hadamard Edge Detection (QHED), the utilization of the Hadamard operator and an extra qubit theoretically allows for more accurate and computationally efficient edge extraction compared to classical methods. Unfortunately, current simulation results do not fully reflect this potential.

Moreover, further research could be directed towards integrating quantum edge computing with classical edge computing in a hybrid architecture, where each computer performs specific tasks better suited to its strengths. Additionally, with the growing potential of machine learning, including its quantum version, the range of applications expands significantly.

## Citation

If you find our work helpful in your research, please cite it as:

[Quantum edge detection](https://github.com/Qiskit/textbook/blob/main/notebooks/ch-applications/quantum-edge-detection.ipynb) Last accessed 27 December 2023.

