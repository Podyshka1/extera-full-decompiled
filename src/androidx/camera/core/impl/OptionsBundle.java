package androidx.camera.core.impl;

import android.util.ArrayMap;
import androidx.camera.core.impl.Config;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import retrofit2.Utils$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
public class OptionsBundle implements Config {
    private static final OptionsBundle EMPTY_BUNDLE;
    protected static final Comparator<Config.Option<?>> ID_COMPARE;
    protected final TreeMap<Config.Option<?>, Map<Config.OptionPriority, Object>> mOptions;

    static {
        Comparator<Config.Option<?>> comparator = new Comparator() { // from class: androidx.camera.core.impl.OptionsBundle$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Config.Option) obj).getId().compareTo(((Config.Option) obj2).getId());
            }
        };
        ID_COMPARE = comparator;
        EMPTY_BUNDLE = new OptionsBundle(new TreeMap(comparator));
    }

    public OptionsBundle(TreeMap<Config.Option<?>, Map<Config.OptionPriority, Object>> treeMap) {
        this.mOptions = treeMap;
    }

    public static OptionsBundle from(Config config) {
        if (OptionsBundle.class.equals(config.getClass())) {
            return (OptionsBundle) config;
        }
        TreeMap treeMap = new TreeMap(ID_COMPARE);
        for (Config.Option<?> option : config.listOptions()) {
            Set<Config.OptionPriority> priorities = config.getPriorities(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : priorities) {
                arrayMap.put(optionPriority, config.retrieveOptionWithPriority(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new OptionsBundle(treeMap);
    }

    public static OptionsBundle emptyBundle() {
        return EMPTY_BUNDLE;
    }

    @Override // androidx.camera.core.impl.Config
    public Set<Config.Option<?>> listOptions() {
        return Collections.unmodifiableSet(this.mOptions.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public boolean containsOption(Config.Option<?> option) {
        return this.mOptions.containsKey(option);
    }

    @Override // androidx.camera.core.impl.Config
    public <ValueT> ValueT retrieveOption(Config.Option<ValueT> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map == null) {
            Native$$ExternalSyntheticBUOutline5.m493m("Option does not exist: ", option);
            return null;
        }
        return (ValueT) map.get((Config.OptionPriority) Collections.min(map.keySet()));
    }

    @Override // androidx.camera.core.impl.Config
    public <ValueT> ValueT retrieveOption(Config.Option<ValueT> option, ValueT valuet) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        return map == null ? valuet : (ValueT) map.get((Config.OptionPriority) Collections.min(map.keySet()));
    }

    @Override // androidx.camera.core.impl.Config
    public <ValueT> ValueT retrieveOptionWithPriority(Config.Option<ValueT> option, Config.OptionPriority optionPriority) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map == null) {
            Native$$ExternalSyntheticBUOutline5.m493m("Option does not exist: ", option);
            return null;
        }
        if (!map.containsKey(optionPriority)) {
            Utils$$ExternalSyntheticBUOutline2.m1070m("Option does not exist: ", option, " with priority=", optionPriority);
            return null;
        }
        return (ValueT) map.get(optionPriority);
    }

    @Override // androidx.camera.core.impl.Config
    public Config.OptionPriority getOptionPriority(Config.Option<?> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map == null) {
            Native$$ExternalSyntheticBUOutline5.m493m("Option does not exist: ", option);
            return null;
        }
        return (Config.OptionPriority) Collections.min(map.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public void findOptions(String str, Config.OptionMatcher optionMatcher) {
        for (Map.Entry<Config.Option<?>, Map<Config.OptionPriority, Object>> entry : this.mOptions.tailMap(Config.Option.create(str, Void.class)).entrySet()) {
            if (!entry.getKey().getId().startsWith(str) || !optionMatcher.onOptionMatched(entry.getKey())) {
                return;
            }
        }
    }

    @Override // androidx.camera.core.impl.Config
    public Set<Config.OptionPriority> getPriorities(Config.Option<?> option) {
        Map<Config.OptionPriority, Object> map = this.mOptions.get(option);
        if (map == null) {
            return Collections.EMPTY_SET;
        }
        return Collections.unmodifiableSet(map.keySet());
    }
}
