import ctypes
import subprocess
import pygetwindow as gw

def find_window_by_titles(titles):
    for title in titles:
        windows = gw.getWindowsWithTitle(title)
        if windows:
            return windows[0]
    return None

def main():
    window_titles = ["Hax Debugger"]
    window = find_window_by_titles(window_titles)
    
    if window:
        for title in window_titles:
            try:
                subprocess.run(["taskkill", "/f", "/fi", f"WINDOWTITLE eq {title}"], check=True)
                subprocess.run(["taskkill", "/f", "/fi", f"WINDOWTITLE eq {title}"], check=True)

            except subprocess.CalledProcessError as e:
                ctypes.windll.user32.MessageBoxW(
                    0,
                    f"There was an error. Please close both MultiTools.",
                    "Error",
                    0
                )

if __name__ == "__main__":
    main()
