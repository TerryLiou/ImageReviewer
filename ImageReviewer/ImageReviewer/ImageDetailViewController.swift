import UIKit

class ImageDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    static let identidier = "ImageDetailViewController"

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var imageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        let tap = UITapGestureRecognizer(target: self, action: #selector(pickImage))
        imageView.addGestureRecognizer(tap)
        imageView.isUserInteractionEnabled = true

        addSaveButton()
        addCloseButton()
    }

    func pickImage() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary

        present(imagePicker, animated: true, completion: nil)

    }

    func addSaveButton() {
        view.addSubview(imageButton)
//        let isEditing = false
//        if isEditing {
//            imageButton.setTitle("Change", for: .normal)
//        } else {
//          imageButton.setTitle("Save", for: .normal)
//        }
        imageButton.backgroundColor = UIColor(red: 237/255, green: 96/255, blue: 81/255, alpha: 1)
        imageButton.tintColor = UIColor.white
        let font = UIFont.systemFont(ofSize: 20)
        imageButton.titleLabel?.font = font

        imageButton.layer.cornerRadius = 20
        imageButton.layer.shadowColor = UIColor(red: 247/255, green: 174/255, blue: 163/255, alpha: 1).cgColor
        imageButton.layer.shadowOffset = CGSize.zero
        imageButton.layer.shadowRadius = 5
        imageButton.layer.shadowOpacity = 1.0
        imageButton.layer.shouldRasterize = true

    }

    func addCloseButton() {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            imageView.frame = CGRect(x: 0, y: 0, width: pickedImage.size.width, height: pickedImage.size.height)
            imageView.image = pickedImage
            imageView.contentMode = .scaleAspectFit

        }
        dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
