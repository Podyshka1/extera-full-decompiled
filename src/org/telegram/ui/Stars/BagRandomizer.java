package org.telegram.ui.Stars;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public class BagRandomizer<T> {
    private final List<T> bag;
    private int currentIndex;
    private T next;
    private final Random random;
    private boolean reshuffleIfEnd = true;
    private final List<T> shuffledBag;

    public BagRandomizer(List<T> list) {
        ArrayList arrayList = new ArrayList(list == null ? new ArrayList<>() : list);
        this.bag = arrayList;
        this.shuffledBag = new ArrayList(arrayList);
        this.currentIndex = 0;
        this.random = new Random();
        reshuffle();
        next();
    }

    public T next() {
        if (this.bag.isEmpty()) {
            return null;
        }
        T t = this.next;
        if (this.currentIndex >= this.shuffledBag.size()) {
            if (this.reshuffleIfEnd) {
                reshuffle();
            } else {
                this.currentIndex = 0;
            }
        }
        List<T> list = this.shuffledBag;
        int i = this.currentIndex;
        this.currentIndex = i + 1;
        this.next = list.get(i);
        return t;
    }

    public void setReshuffleIfEnd(boolean z) {
        this.reshuffleIfEnd = z;
    }

    public T getNext() {
        return this.next;
    }

    public void reset() {
        this.currentIndex = 0;
        next();
    }

    private void reshuffle() {
        Collections.shuffle(this.shuffledBag, this.random);
        this.currentIndex = 0;
    }
}
