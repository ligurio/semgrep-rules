# ruleid: pass_body
for i in range(100):
    pass

def foo_function():
    # ruleid: pass_body
    pass

class foo_class:
    def somemethod():
        # ruleid: pass_body
        pass


class bar_class:
    def someothermethod():
        # ruleid: pass_body
        for i in range(100):
            pass
