import UnityEngine
		
public class OnClickMove(MonoBehaviour):

	public character as GameObject
	private characterMove as CharacterMove
	private target as Vector2

	def Awake ():
		characterMove = character.GetComponent[of CharacterMove]()

	def Start ():
		target = transform.position
		Debug.Log(target)

	def OnMouseOver():
		count as int
		if Input.GetMouseButton(0) and character.transform.position != target:
			while character.transform.position != target:
				characterMove.move(target)
				count += 1
		Debug.Log(count)