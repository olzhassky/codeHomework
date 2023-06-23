import UIKit

class ViewController: UIViewController {
    let myView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.layer.cornerRadius = 24
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let myView1: UIView = {
       let view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 75
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "pencil.slash")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let myLabel: UILabel = {
        let label = UILabel()
        label.text = "NSLayoutConstraint anchors - это свойства и методы, предоставляемые классом NSLayoutConstraint и его расширениями, которые упрощают создание ограничений верстки с использованием Auto Layout в коде.Некоторые из самых распространенных anchors включают:NSLayoutAnchor<NSLayoutXAxisAnchor>: Представляет горизонтальные якоря, такие как leadingAnchor (левый край), trailingAnchor (правый край) и centerXAnchor (горизонтальный центр).NSLayoutAnchor<NSLayoutYAxisAnchor>: Представляет вертикальные якоря, такие как topAnchor (верхний край)"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let myLabel1: UILabel = {
       let label = UILabel()
        label.text = "Какой то текст"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("ТЫК", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(ViewController.self, action: #selector(myButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
      
    }
    
    private func setupScene() {
        view.addSubview(myView)
        myView.addSubview(myView1)
        myView.addSubview(imageView)
        view.addSubview(myLabel)
        view.addSubview(myLabel1)
        view.addSubview(myButton)
        view.backgroundColor = .black
        myView1.layer.cornerRadius = 75
        myView1.layer.masksToBounds = true
        
    }
    
    private func makeConstraints() {
        NSLayoutConstraint.activate([
            // myView constraints
            myView.topAnchor.constraint(equalTo: view.topAnchor),
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            
            // myView1 constraints
            myView1.centerXAnchor.constraint(equalTo: myView.centerXAnchor),
            myView1.centerYAnchor.constraint(equalTo: myView.centerYAnchor),
            myView1.widthAnchor.constraint(equalToConstant: 150),
            myView1.heightAnchor.constraint(equalToConstant: 150),
            
            // imageView constraints
            imageView.trailingAnchor.constraint(equalTo: myLabel1.leadingAnchor, constant: 10),
            imageView.centerYAnchor.constraint(equalTo: myLabel1.centerYAnchor),
            
            // myLabel1 constraints
            myLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            myLabel1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            // myLabel constraints
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            myLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            // myButton constraints
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
    }
    
    @objc private func myButtonTapped() {
        print("ТЫКнуто")
    }
}
