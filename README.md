<h1 align="center">🧮 Calculadora de IMC</h1>

<p align="center">
  Um pequeno app iOS feito em <strong>SwiftUI</strong> para calcular o <strong>Índice de Massa Corporal (IMC)</strong>,<br>
  mostrar a classificação com uma ilustração e guardar um histórico dos resultados.
</p>

<p align="center">
  <img src="IMC/Assets.xcassets/Male3.imageset/Male3.png" width="140" alt="Ilustração masculina">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="IMC/Assets.xcassets/Female3.imageset/Female3.png" width="140" alt="Ilustração feminina">
</p>

---

## 📱 Telas

<p align="center">
  <img src="screenshots/home.png" width="260" alt="Tela inicial">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="screenshots/resultado.png" width="260" alt="Tela de resultado">
</p>
<p align="center">
  <em>Tela inicial</em> &nbsp;•&nbsp; <em>Tela de resultado</em>
</p>

## ✨ Funcionalidades

- Campo para digitar o **nome**
- Seleção de **gênero** (Homem / Mulher), que troca a ilustração
- Ajuste de **altura** (cm) e **peso** (kg) com botões **–** e **+** (padrão: 175 cm / 70 kg)
- Cálculo do IMC e tela de **resultado** com classificação e ilustração correspondente
- **Adicionar** o resultado ao histórico (disponível quando o nome é preenchido)
- **Listagem** dos IMCs salvos, com opção de apagar deslizando o item
- Botão **Recalcular IMC** para voltar ao início

## 📐 Fórmula

```
IMC = peso (kg) / altura (m)²
```

No código, a altura é informada em centímetros:

```swift
let imc = Double(weight) / (Double(height * height) / 10000)
```

## 📊 Classificação

| IMC | Classificação | Homem | Mulher |
|:---:|:---|:---:|:---:|
| menor que 16 | Magreza | <img src="IMC/Assets.xcassets/Male1.imageset/Male1.png" width="60"> | <img src="IMC/Assets.xcassets/Female1.imageset/Female1.png" width="60"> |
| 16 a 18,5 | Abaixo do peso | <img src="IMC/Assets.xcassets/Male2.imageset/Male2.png" width="60"> | <img src="IMC/Assets.xcassets/Female2.imageset/Female2.png" width="60"> |
| 18,5 a 25 | Peso Ideal | <img src="IMC/Assets.xcassets/Male3.imageset/Male3.png" width="60"> | <img src="IMC/Assets.xcassets/Female3.imageset/Female3.png" width="60"> |
| 25 a 30 | Sobrepeso | <img src="IMC/Assets.xcassets/Male4.imageset/Male4.png" width="60"> | <img src="IMC/Assets.xcassets/Female4.imageset/Female4.png" width="60"> |
| 30 ou mais | Obesidade | <img src="IMC/Assets.xcassets/Male5.imageset/Male5.png" width="60"> | <img src="IMC/Assets.xcassets/Female5.imageset/Female5.png" width="60"> |

## 📋 Histórico

Os resultados adicionados ficam salvos no dispositivo usando `@AppStorage("lista_imc")`, com a lista codificada em JSON (`Codable`). Quando ainda não há nenhum IMC salvo, a tela de listagem mostra:

<p align="center">
  <img src="IMC/Assets.xcassets/EmptyList.imageset/EmptyListWhite.jpg" width="220" alt="Lista vazia">
  <br>
  <em>Nenhum IMC cadastrado</em>
</p>

## 🗂️ Estrutura do projeto

```
IMC/
├── IMCApp.swift        # Ponto de entrada do app
├── ContentView.swift   # NavigationStack e rotas de navegação
├── AppRoute.swift      # Rotas: resultado e listagem
├── HomeView.swift      # Tela inicial: nome, gênero, altura e peso
├── ResultView.swift    # Resultado do IMC e classificação
├── ListView.swift      # Histórico de IMCs salvos
├── MeasureView.swift   # Componente de medida com botões – / +
├── GenderButton.swift  # Botão de seleção de gênero
├── AppButton.swift     # Botão padrão do app
├── Gender.swift        # Enum de gênero
├── IMCStorage.swift    # Persistência do histórico (AppStorage + JSON)
└── Assets.xcassets     # Ilustrações e cores
```

## 🛠️ Tecnologias

- Swift 5
- SwiftUI
- `NavigationStack` + `NavigationPath`
- `@State`, `@Binding` e `@AppStorage`
- `Codable` (JSONEncoder / JSONDecoder)

## ▶️ Como executar

1. Tenha o **Xcode** instalado (versão com suporte a iOS 18 ou superior)
2. Clone o repositório
3. Abra o arquivo `IMC.xcodeproj`
4. Escolha um simulador de iPhone e pressione **⌘R**

## 👩‍💻 Autoria

Desenvolvido por **Raqueli**.
