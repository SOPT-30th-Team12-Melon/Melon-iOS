# π Melon-iOS π

π THE SOPT 30th ν©λ μΈλ―Έλ 12μ‘° iOS ν νλ‘μ νΈ λ ν¬μ§ν°λ¦¬μλλ€.

π [Notion Page](https://www.notion.so/ENFP-iOS-13948c19a09f4290850f794950bad0c2)

<br>

## π Team ENFP [π¦π¦π¦](https://www.notion.so/ENFP-iOS-13948c19a09f4290850f794950bad0c2)

| [@yujinnee](https://github.com/yujinnee) | [@lee-euijin](https://github.com/lee-euijin) | [@sssua-0928](https://github.com/sssua-0928) |
| :---: | :---: | :---: |
| ![KakaoTalk_Photo_2022-05-26-15-48-31](https://user-images.githubusercontent.com/51031771/170434276-cbc9aaa8-f4a1-4dc8-befd-558c92f04f31.png)| ![KakaoTalk_Photo_2022-05-26-15-47-11](https://user-images.githubusercontent.com/51031771/170434375-39f2cafd-53e7-4a67-97a0-d37b47bf0eb3.png) |![KakaoTalk_Photo_2022-05-26-15-46-29](https://user-images.githubusercontent.com/51031771/170434415-5deb3bf1-7ac0-4b3b-af18-bb8b876ef1f6.png)|
|`PostingView`|`DetailView`|`MainView`|


    

<br>



## ππ Code Convention

<aside>

π₯ μ§μ§ κΌ­ μ§ν΅μλ€!

π₯ [μ€νμΌμμ΄](https://github.com/StyleShare/swift-style-guide)μ μ€μμ€νΈ μ€νμΌ κ°μ΄λλ₯Ό μ°Έκ³ ν©λλ€.
       
</aside>

<details>

<summary> π¬ π¬ π¬ </summary>
<div markdown="1">


### 1. μ½λ λ μ΄μμ


#### 1-1. κ³΅λ°±

- μ½λ‘ (`:`)μ μΈ λμλ μ½λ‘ μ μ€λ₯Έμͺ½μλ§ κ³΅λ°±μ λ‘λλ€.
    
    ```swift
    let names: [String: String]?
    ```
    

- λΉ μ€μ λ± ν μ€ μ λλ§.. λλ¬΄ λ§μ λΉ μ€μ μ§μν©λλ€.

#### 1-2. MARK κ΅¬λ¬Έ

- `MARK` κ΅¬λ¬Έ μμ μλμλ κ³΅λ°±μ΄ νμν©λλ€.
    
    ```swift
    // MARK: Layout
    
    override func layoutSubviews() {
      // doSomething()
    }
    
    // MARK: Actions
    
    override func menuButtonDidTap() {
      // doSomething()
    }
    ```
    

- `MARK` κ΅¬λ¬Έμ μμλ μλμ κ°μ΅λλ€.
    
    ```swift
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Override Method UI + Layout
    
    override func configUI() {
        
    }
    
    override func setupAutoLayout() {
        
    }
    
    // MARK: - Custom Method
    
    // MARK: - @objc
    
    ```
    

- `Cell` νμΌμ `// MARK: - Lifecycle` λμ  μλμ κ°μ΅λλ€.
    
    ```swift
    // MARK: - Initializing
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(style: .default, reuseIdentifier: nil)
    }
    ```
    
- `Delegate`λ `Datasource`λ₯Ό `extension`μΌλ‘ λΉΌμ€ κ²½μ° μμ λ§ν¬κ΅¬λ¬Έμ κΌ­ μ¨μ€μΌ ν©λλ€.
    
    ```swift
    // MARK: - UICollectionViewDelegate
    
    extension MainVC: UICollectionViewDelegate {
    
    ...
    
    }
    ```
    

#### 1-3. μν¬νΈ

- λͺ¨λ μν¬νΈλ `μνλ²³ μ`μΌλ‘ μ λ ¬ν©λλ€.
- λ΄μ₯ νλ μμν¬λ₯Ό λ¨Όμ  μν¬νΈνκ³ , λΉ μ€λ‘ κ΅¬λΆνμ¬ μλνν° νλ μμν¬λ₯Ό μν¬νΈν©λλ€.
    
    ```swift
    import UIKit
    
    import SwiftyColor
    import SwiftyImage
    import Then
    import URLNavigator
    ```
    

<br>

### 2. λ€μ΄λ°


#### 2-1. μ‘μ ν¨μ λ€μ΄λ°

- `Action` ν¨μμ λ€μ΄λ°μ 'μ£Όμ΄ + λμ¬ + λͺ©μ μ΄' ννλ₯Ό μ¬μ©ν©λλ€.
    - **Tap(λλ λ€ λ)** μΒ  `.touchUpInside`μ λμνκ³ ,
    - **Press(λλ¦)** λΒ  `.touchDown`μ λμν©λλ€.
    - **will~** μ νΉμ  νμκ° μΌμ΄λκΈ° μ§μ μ΄κ³ ,Β **did~** λ νΉμ  νμκ° μΌμ΄λ μ§νμλλ€.
    - **should~** λ μΌλ°μ μΌλ‘Β `Bool`μ λ°ννλ ν¨μμ μ¬μ©λ©λλ€.
    
    
    ```
    func backButtonDidTap() {
      // ...
    }
    
    touchUpBackButton
    
    ```
    
<br>

### 3. κΆμ₯μ¬ν­


#### 3-1. λ³μ μ΄κΈ°ν

- κ°λ₯νλ€λ©΄ λ³μλ₯Ό μ μν  λ ν¨κ» μ΄κΈ°ννλλ‘ ν©λλ€.
- [Then](https://github.com/devxoul/Then) λΌμ΄λΈλ¬λ¦¬λ₯Ό μ¬μ©νλ©΄ μ΄κΈ°νμ ν¨κ» μμ±μ μ§μ ν  μ μμ΅λλ€.
    
    ```swift
    let label = UILabel().then {
      $0.textAlignment = .center
      $0.textColor = .black
      $0.text = "Hello, World!"
    }
    ```
    
    ```swift
    var job: String = "iOS Programmer"
    ```
    

#### 3-2. enum

- μμλ₯Ό μ μν  λμλΒ `enum`λ₯Ό λ§λ€μ΄ λΉμ·ν μμλΌλ¦¬ λͺ¨μλ‘λλ€.
    
    μ¬μ¬μ©μ±κ³Ό μ μ§λ³΄μ μΈ‘λ©΄μμ ν° ν₯μμ κ°μ Έμ΅λλ€.Β 
    
    `struct`Β λμ Β `enum`μ μ¬μ©νλ μ΄μ λ, μμ±μκ° μ κ³΅λμ§ μλ μλ£νμ μ¬μ©νκΈ° μν΄μμλλ€.
    
- [CGFloatLiteral](https://github.com/devxoul/CGFloatLiteral)κ³ΌΒ [SwiftyColor](https://github.com/devxoul/SwiftyColor)λ₯Ό μ¬μ©ν΄μ μ½λλ₯Ό λ¨μνμν΅λλ€.
    
    ```swift
    final class ProfileViewController: UIViewController {
    
      private enum Metric {
        static let profileImageViewLeft = 10.f
        static let profileImageViewRight = 10.f
        static let nameLabelTopBottom = 8.f
        static let bioLabelTop = 6.f
      }
    
      private enum Font {
        static let nameLabel = UIFont.boldSystemFont(ofSize: 14)
        static let bioLabel = UIFont.boldSystemFont(ofSize: 12)
      }
    
      private enum Color {
        static let nameLabelText = 0x000000.color
        static let bioLabelText = 0x333333.color ~ 70%
      }
    
    }
    ```
    

#### 3-3. final

- λμ΄μ μμμ΄ λ°μνμ§ μλ ν΄λμ€λ ν­μΒ `final`Β ν€μλλ‘ μ μΈν©λλ€.
    
    ```swift
    
    final class MyViewController: UIViewController {
      // ...
    }
    
    ```
 
<br>

### 4. ViewController


- `ViewController`, `TableViewCell`, `CollectionViewCell`
    - `VC`, `TVC`, `CVC`λ‘ μΆμ½ν΄μ μ¬μ©ν©λλ€.


</div>
</details>

<br>
<br>

## πππ Git Convention

π₯ [μ°Έκ³ μλ£](https://github.com/TeamMyDaily/4most-Android/wiki/1.-Git-μ¬μ©λ²)

π₯ [λΏμλ€μ κΉ μ»¨λ²€μμ΄ μμΈνκ² λ³΄κ³  μΆλ€λ©΄?](https://www.notion.so/code-convention-5b50b29bb4444998a9fef9482197b4c7)

<details>

<summary> π¬ π¬ π¬ </summary>
<div markdown="1">

### Git Flow

```
1. Issueλ₯Ό μμ±νλ€.
2. feature Branchλ₯Ό μμ±νλ€.
3. Add - Commit - Push - Pull Request μ κ³Όμ μ κ±°μΉλ€.
4. Pull Requestκ° μμ±λλ©΄ μμ±μ μ΄μΈμ λ€λ₯Έ νμμ΄ Code Reviewλ₯Ό νλ€.
5. Code Reviewκ° μλ£λλ©΄ Pull Request μμ±μκ° develop Branchλ‘ merge νλ€.
6. μ’λ£λ Issueμ Pull Requestμ Labelκ³Ό Projectλ₯Ό κ΄λ¦¬νλ€.
```

### Commit Message Convention


    - FEATΒ : μλ‘μ΄ κΈ°λ₯ κ΅¬ν
    - ADDΒ : Feat μ΄μΈμ λΆμμ μΈ μ½λ μΆκ°, λΌμ΄λΈλ¬λ¦¬ μΆκ°, μλ‘μ΄ Viewλ Activity μμ±
    - CHOREΒ : κ·Έ μ΄μΈμ μ‘μΌ/ λ²μ  μ½λ μμ , ν¨ν€μ§ κ΅¬μ‘° λ³κ²½, νμΌ μ΄λ, κ°λμ±μ΄λ λ³μλͺ, reformat λ±
    - FIXΒ : λ²κ·Έ, μ€λ₯ ν΄κ²°
    - DELΒ : μΈλͺ¨μλ μ½λ λ° νμΌ μ­μ 
    - MODΒ : xml (μ€ν λ¦¬λ³΄λ) νμΌλ§ μμ ν κ²½μ°
    - DOCSΒ : READMEλ WIKI λ±μ λ¬Έμ κ°μ 
    - REFACTORΒ : λ΄λΆ λ‘μ§μ λ³κ²½ νμ§ μκ³  κΈ°μ‘΄μ μ½λλ₯Ό κ°μ νλ λ¦¬ν©ν λ§ μ


<details>
<summary>`Prefix` κ° ν·κ°λ¦΄ λ μ°Έκ³ ν΄μ£ΌμΈμ!</summary>
<div markdown="2">

```swift
[ADD] ν νμ΄λΈλ·° λμ΄ κ΄λ ¨ μ½λ μΆκ°(#1)
[FEAT] ν κΈ°λ₯ κ΅¬ν**(#2)
[CHORE] ν μ λ μ΄μμ μ½λ μμ (#2)
[MOVE] ν ν΄λ νμΌ μ΄λ(#2)
[FIX] ν μ λ¦¬λ‘λ λ²κ·Έ ν΄κ²°(#3)
[DEL] νμμλ μ£Όμ μ­μ (#2)
```
</div>
</details>


### Branch Naming

`<prefix μλ¬Έμλ‘>/<μ΄μλ²νΈ>-<κ΄λ ¨μ€λͺ>`

*β λμλ¬Έμ κΌ­ μ§μΌμ£ΌμΈμ!*

```swift
feature/2-HomeLayout
feature/10-HomeService
```

### Issue

- Template μ¬μ©
- λΌλ²¨ λ¬κΈ°
- νλ‘μ νΈ μΉΈλ°λ³΄λ μ²΄ν¬ νμ

### Pull Request

- Template μ¬μ© (λ΄μ© κΌΌκΌΌνκ² μμ±)
- Code Review 24μκ° λ΄λ‘

### Merge

- Approved κ±Έκ³  μ½λ¦¬ λ°μΌλ©΄ μκΈ°μμ μ΄ Click

</aside>




</div>
</details>


<br>
<br>

## ππππ Foldering

<details>

<summary> π¬ π¬ π¬ </summary>
<div markdown="1">

<br>

```
π Melon-iOS
		   β
		   |ββ π Global
			 β     |ββ π Base
		   β     |ββ π Constant
		   β     |ββ π Extension
		   β     βββ π Protocol
		   β
		   βββ π Source
		   β     |ββ π Model
		   β     |ββ π Network
		   β     βββ π Screen
			 |           |ββ Component
		   β           β
		   β           |ββ TabbarController
		   β           |ββ π Main
		   β           |     |ββ π VC   
		   β           |     |ββ π Cell
		   β           |     βββ π Component
		   β           |ββ π Album
		   β           |     |ββ π VC
		   β           |     |ββ π Cell
		   β           |     βββ π Component 
		   β	         |ββ π Posting
		   β                 |ββ π VC 
		   β                 |ββ π Cell 
		   β                 βββ π Component
		   β           
		   β         
		   β
		   βββ π Resource
		       |
		       |ββ π Support
		       |     |ββ AppDelegate.swift     
		       |     βββ SceneDelegate.swift
		       |
		       |ββ π Storyboard
		       |     |ββ LaunchScreen.storyboard    
		       |     |ββ Main.storyboard    
		       |     |ββ Album.storyboard    
		       |     βββ Posting.storyboard
		       |
		       |ββ Assets.xcassets
		       βββ Info.plist
		
```

</div>
</details>


