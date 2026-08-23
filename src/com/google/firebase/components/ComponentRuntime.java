package com.google.firebase.components;

import android.util.Log;
import com.google.android.exoplayer2.mediacodec.AbstractC1272xa830b30;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class ComponentRuntime implements ComponentContainer, ComponentLoader {
    private static final Provider EMPTY_PROVIDER = new Provider() { // from class: com.google.firebase.components.ComponentRuntime$$ExternalSyntheticLambda0
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return Collections.EMPTY_SET;
        }
    };
    private final ComponentRegistrarProcessor componentRegistrarProcessor;
    private final Map components;
    private final AtomicReference eagerComponentsInitializedWith;
    private final EventBus eventBus;
    private final Map lazyInstanceMap;
    private final Map lazySetMap;
    private Set processedCoroutineDispatcherInterfaces;
    private final List unprocessedRegistrarProviders;

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Object get(Qualified qualified) {
        return ComponentContainer.CC.$default$get(this, qualified);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Object get(Class cls) {
        return get(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Deferred getDeferred(Class cls) {
        return getDeferred(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Provider getProvider(Class cls) {
        return getProvider(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Set setOf(Qualified qualified) {
        return ComponentContainer.CC.$default$setOf(this, qualified);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public /* synthetic */ Set setOf(Class cls) {
        return setOf(Qualified.unqualified(cls));
    }

    public static Builder builder(Executor executor) {
        return new Builder(executor);
    }

    private ComponentRuntime(Executor executor, Iterable iterable, Collection collection, ComponentRegistrarProcessor componentRegistrarProcessor) {
        this.components = new HashMap();
        this.lazyInstanceMap = new HashMap();
        this.lazySetMap = new HashMap();
        this.processedCoroutineDispatcherInterfaces = new HashSet();
        this.eagerComponentsInitializedWith = new AtomicReference();
        EventBus eventBus = new EventBus(executor);
        this.eventBus = eventBus;
        this.componentRegistrarProcessor = componentRegistrarProcessor;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Component.m499of(eventBus, EventBus.class, Subscriber.class, Publisher.class));
        arrayList.add(Component.m499of(this, ComponentLoader.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component != null) {
                arrayList.add(component);
            }
        }
        this.unprocessedRegistrarProviders = iterableToList(iterable);
        discoverComponents(arrayList);
    }

    private void discoverComponents(List list) {
        int i;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.unprocessedRegistrarProviders.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((Provider) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.componentRegistrarProcessor.processRegistrar(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it2 = list.iterator();
            while (true) {
                i = 0;
                if (!it2.hasNext()) {
                    break;
                }
                Object[] array = ((Component) it2.next()).getProvidedInterfaces().toArray();
                int length = array.length;
                while (true) {
                    if (i < length) {
                        Object obj = array[i];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.processedCoroutineDispatcherInterfaces.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.processedCoroutineDispatcherInterfaces.add(obj.toString());
                        }
                        i++;
                    }
                }
            }
            if (this.components.isEmpty()) {
                CycleDetector.detect(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.components.keySet());
                arrayList2.addAll(list);
                CycleDetector.detect(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final Component component = (Component) it3.next();
                this.components.put(component, new Lazy(new Provider() { // from class: com.google.firebase.components.ComponentRuntime$$ExternalSyntheticLambda1
                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        return ComponentRuntime.$r8$lambda$KkGLnATw7zawFxzXHI2bmfEwUaI(this.f$0, component);
                    }
                }));
            }
            arrayList.addAll(processInstanceComponents(list));
            arrayList.addAll(processSetComponents());
            processDependencies();
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            ((Runnable) obj2).run();
        }
        maybeInitializeEagerComponents();
    }

    public static /* synthetic */ Object $r8$lambda$KkGLnATw7zawFxzXHI2bmfEwUaI(ComponentRuntime componentRuntime, Component component) {
        componentRuntime.getClass();
        return component.getFactory().create(new RestrictedComponentContainer(component, componentRuntime));
    }

    private void maybeInitializeEagerComponents() {
        Boolean bool = (Boolean) this.eagerComponentsInitializedWith.get();
        if (bool != null) {
            doInitializeEagerComponents(this.components, bool.booleanValue());
        }
    }

    private static List iterableToList(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    private List processInstanceComponents(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component.isValue()) {
                final Provider provider = (Provider) this.components.get(component);
                for (Qualified qualified : component.getProvidedInterfaces()) {
                    if (!this.lazyInstanceMap.containsKey(qualified)) {
                        this.lazyInstanceMap.put(qualified, provider);
                    } else {
                        final OptionalProvider optionalProvider = (OptionalProvider) ((Provider) this.lazyInstanceMap.get(qualified));
                        arrayList.add(new Runnable() { // from class: com.google.firebase.components.ComponentRuntime$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                optionalProvider.set(provider);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    private List processSetComponents() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.components.entrySet()) {
            Component component = (Component) entry.getKey();
            if (!component.isValue()) {
                Provider provider = (Provider) entry.getValue();
                for (Qualified qualified : component.getProvidedInterfaces()) {
                    if (!map.containsKey(qualified)) {
                        map.put(qualified, new HashSet());
                    }
                    ((Set) map.get(qualified)).add(provider);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (!this.lazySetMap.containsKey(entry2.getKey())) {
                this.lazySetMap.put((Qualified) entry2.getKey(), LazySet.fromCollection((Collection) entry2.getValue()));
            } else {
                final LazySet lazySet = (LazySet) this.lazySetMap.get(entry2.getKey());
                for (final Provider provider2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: com.google.firebase.components.ComponentRuntime$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            lazySet.add(provider2);
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized Provider getProvider(Qualified qualified) {
        Preconditions.checkNotNull(qualified, "Null interface requested.");
        return (Provider) this.lazyInstanceMap.get(qualified);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public Deferred getDeferred(Qualified qualified) {
        Provider provider = getProvider(qualified);
        if (provider == null) {
            return OptionalProvider.empty();
        }
        if (provider instanceof OptionalProvider) {
            return (OptionalProvider) provider;
        }
        return OptionalProvider.m500of(provider);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized Provider setOfProvider(Qualified qualified) {
        LazySet lazySet = (LazySet) this.lazySetMap.get(qualified);
        if (lazySet != null) {
            return lazySet;
        }
        return EMPTY_PROVIDER;
    }

    public void initializeEagerComponents(boolean z) {
        HashMap map;
        if (AbstractC1272xa830b30.m315m(this.eagerComponentsInitializedWith, null, Boolean.valueOf(z))) {
            synchronized (this) {
                map = new HashMap(this.components);
            }
            doInitializeEagerComponents(map, z);
        }
    }

    private void doInitializeEagerComponents(Map map, boolean z) {
        for (Map.Entry entry : map.entrySet()) {
            Component component = (Component) entry.getKey();
            Provider provider = (Provider) entry.getValue();
            if (component.isAlwaysEager() || (component.isEagerInDefaultApp() && z)) {
                provider.get();
            }
        }
        this.eventBus.enablePublishingAndFlushPending();
    }

    private void processDependencies() {
        for (Component component : this.components.keySet()) {
            for (Dependency dependency : component.getDependencies()) {
                if (dependency.isSet() && !this.lazySetMap.containsKey(dependency.getInterface())) {
                    this.lazySetMap.put(dependency.getInterface(), LazySet.fromCollection(Collections.EMPTY_SET));
                } else if (this.lazyInstanceMap.containsKey(dependency.getInterface())) {
                    continue;
                } else {
                    if (dependency.isRequired()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", component, dependency.getInterface()));
                    }
                    if (!dependency.isSet()) {
                        this.lazyInstanceMap.put(dependency.getInterface(), OptionalProvider.empty());
                    }
                }
            }
        }
    }

    public static final class Builder {
        private final Executor defaultExecutor;
        private final List lazyRegistrars = new ArrayList();
        private final List additionalComponents = new ArrayList();
        private ComponentRegistrarProcessor componentRegistrarProcessor = ComponentRegistrarProcessor.NOOP;

        public static /* synthetic */ ComponentRegistrar $r8$lambda$rq5ahKBnCKJMyE365M3jifpISoo(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        Builder(Executor executor) {
            this.defaultExecutor = executor;
        }

        public Builder addLazyComponentRegistrars(Collection collection) {
            this.lazyRegistrars.addAll(collection);
            return this;
        }

        public Builder addComponentRegistrar(final ComponentRegistrar componentRegistrar) {
            this.lazyRegistrars.add(new Provider() { // from class: com.google.firebase.components.ComponentRuntime$Builder$$ExternalSyntheticLambda0
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return ComponentRuntime.Builder.$r8$lambda$rq5ahKBnCKJMyE365M3jifpISoo(componentRegistrar);
                }
            });
            return this;
        }

        public Builder addComponent(Component component) {
            this.additionalComponents.add(component);
            return this;
        }

        public Builder setProcessor(ComponentRegistrarProcessor componentRegistrarProcessor) {
            this.componentRegistrarProcessor = componentRegistrarProcessor;
            return this;
        }

        public ComponentRuntime build() {
            return new ComponentRuntime(this.defaultExecutor, this.lazyRegistrars, this.additionalComponents, this.componentRegistrarProcessor);
        }
    }
}
