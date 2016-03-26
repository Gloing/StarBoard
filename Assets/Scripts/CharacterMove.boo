import UnityEngine

public class CharacterMove(MonoBehaviour):

	public speed as double = 1.5
	private target as Vector2

	def Start ():
		target = transform.position

	public def move (target):
		transform.position = Vector2.MoveTowards(transform.position, target, speed * Time.deltaTime)

	/*def Update ():
		if Input.GetMouseButton(0):
			target = Camera.main.ScreenToWorldPoint(Input.mousePosition)
		move(target)*/