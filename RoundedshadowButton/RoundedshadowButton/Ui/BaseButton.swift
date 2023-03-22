//
//  BaseButton.swift
//  RoundedshadowButton
//
//  Created by Dongwan Ryoo on 2023/03/23.
//

import UIKit

class BaseButton: UIButton {
    
    //sub 클래스의 생성자
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
        bind()
    }
    
    //sub 클래스의 생성자
    //NSCoding 프로토콜은 이를 구현하는 클래스로부터 실패가능한 이니셜라이저를 작성하도록 한다.
    //프로토콜에 명세된 이니셜라이저를 구현하면 'required'키워드가 반드시 붙어야 하며, subclass에서도 반드시 작성해줘야한다.
    //새로운 지정이니셜라이저를 지정하지 않으면 자동적으로 required init?(coder: NSCoder) 또한 상속되어 아무것도 작성하지 않았을 때는 오류가 발생하지 않는다.
    //required 키워드는 서브클래스에게 '~한 파라미터를 받는 이니셜라이저는 반드시 구현하렴'임을 알려주는 키워드이다.
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //ui관련 기본 세팅
    func configure() {}
    //ui관련 특수 세팅
    func bind() {}
}
