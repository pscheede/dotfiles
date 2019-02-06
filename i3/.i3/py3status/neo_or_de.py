#! /usr/bin/env python3


class Py3status:
    def output(self):
        with open("/home/failipp/neo/aktuell.status", 'r') as f:
            data = f.readline()

        return {'full_text': data[:-1], 'cached_until': self.py3.time_in(1)}
