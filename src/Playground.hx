package;

import coconut.haxeui.Renderer;
import coconut.ui.View;
import haxe.ui.HaxeUIApp;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.components.Button;
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
			<Button text="Label will be empty on next update" />
		</VBox>;
}
