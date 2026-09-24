# ruleid: pass_body
for i in range(100):
    pass

# ruleid: pass_body
def foo_function():
    pass

class foo_class:
    # ruleid: pass_body
    def somemethod():
        pass


class bar_class:
    def someothermethod():
        # ruleid: pass_body
        for i in range(100):
            pass
