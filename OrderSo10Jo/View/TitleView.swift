//
//  TitleView.swift
//  OrderSo10Jo
//
//  Created by 예슬 on 4/2/24.
//

import UIKit
//@IBDesignable
class TitleView: UIView {

    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var searchButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
        //xib로 할때
    }
    override init(frame: CGRect) {
            super.init(frame: frame)
        //코드로 할때
        }
    
    
    private func initialize() {
        let identifier = String(describing: TitleView.self)
        let segview = SegmentView()
        //xib시 필수!!
        guard let view = UINib(nibName: identifier, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else{return}
        addSubview(view)
        self.addSubview(segview)
        segview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segview.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            segview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            segview.heightAnchor.constraint(equalToConstant: 30),
            segview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
        view.frame = self.bounds
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
    }
    
}
