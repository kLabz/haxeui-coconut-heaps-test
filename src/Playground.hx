package;

import coconut.haxeui.Renderer;
import coconut.ui.View;
import haxe.ui.HaxeUIApp;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.components.Button;
// import haxe.ui.components.Label;
import haxe.ui.containers.VBox;

class Playground {
	static function main() {
		var app = new HaxeUIApp();
		app.ready(function() {
			var root = new Component();
			Screen.instance.addComponent(root);
			Renderer.mount(root, <MyView />);
			app.start();
		});
	}
}

class MyView extends View {
	@:state var counter:Int = 0;

	function render()
		<VBox>
			<Button text="Clicked ${counter} times" onClick={counter++} padding={0} />
			<Button text="Clicked ${counter} times" onClick={counter++} />
		</VBox>;

			// <Label text="Clicked $counter times" />
			// <ComplexButton title="Complex Button $counter" />

	// override function viewDidMount() {
	// 	new haxe.Timer(1000).run = function() {
	// 		counter += 1;
	// 	}
	// }
}

// class ComplexButton extends View {
// 	@:attribute var title:String;

// 	function render() <Button text={title} />;

// }
