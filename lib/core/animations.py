from rich import print
import time

loading_animation = ["⢿", "⣻", "⣽", "⣾", "⣷", "⣯", "⣟", "⡿"]
point = "◈"
line_vertical = "│"
line_horizontal = "─"
line_intersection = "├"
line_end = "└"

def display_loading_animation(iterations=10, delay=0.1):
    """
    Display a loading animation in the terminal
    
    Args:
        iterations: Number of animation frames to show
        delay: Time between each frame in seconds
    """
    import sys
    for i in range(iterations):
        frame = loading_animation[i % len(loading_animation)]
        # Use sys.stdout directly to ensure proper handling of carriage returns
        sys.stdout.write(f"\r{frame} ")
        sys.stdout.flush()
        time.sleep(delay)
    # Clear the line after the animation
    sys.stdout.flush()