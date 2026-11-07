package androidx.camera.core.impl;

import androidx.camera.core.impl.Config;

/* JADX INFO: loaded from: classes3.dex */
public interface MutableConfig extends Config {
    <ValueT> void insertOption(Config.Option<ValueT> option, Config.OptionPriority optionPriority, ValueT valuet);

    <ValueT> void insertOption(Config.Option<ValueT> option, ValueT valuet);
}
