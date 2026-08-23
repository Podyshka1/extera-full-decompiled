package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class Component {
    private final Set dependencies;
    private final ComponentFactory factory;
    private final int instantiation;
    private final String name;
    private final Set providedInterfaces;
    private final Set publishedEvents;
    private final int type;

    public static /* synthetic */ Object $r8$lambda$1XnijlikLlzJWfIqLOXy2V5iuHw(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    public static /* synthetic */ Object $r8$lambda$OZ0j4a0bDeW_qgAe4WJTrUMuxVw(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    private Component(String str, Set set, Set set2, int i, int i2, ComponentFactory componentFactory, Set set3) {
        this.name = str;
        this.providedInterfaces = DesugarCollections.unmodifiableSet(set);
        this.dependencies = DesugarCollections.unmodifiableSet(set2);
        this.instantiation = i;
        this.type = i2;
        this.factory = componentFactory;
        this.publishedEvents = DesugarCollections.unmodifiableSet(set3);
    }

    public String getName() {
        return this.name;
    }

    public Set getProvidedInterfaces() {
        return this.providedInterfaces;
    }

    public Set getDependencies() {
        return this.dependencies;
    }

    public ComponentFactory getFactory() {
        return this.factory;
    }

    public Set getPublishedEvents() {
        return this.publishedEvents;
    }

    public boolean isAlwaysEager() {
        return this.instantiation == 1;
    }

    public boolean isEagerInDefaultApp() {
        return this.instantiation == 2;
    }

    public boolean isValue() {
        return this.type == 0;
    }

    public Component withFactory(ComponentFactory componentFactory) {
        return new Component(this.name, this.providedInterfaces, this.dependencies, this.instantiation, this.type, componentFactory, this.publishedEvents);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.providedInterfaces.toArray()) + ">{" + this.instantiation + ", type=" + this.type + ", deps=" + Arrays.toString(this.dependencies.toArray()) + "}";
    }

    public static Builder builder(Class cls) {
        return new Builder(cls, new Class[0]);
    }

    public static Builder builder(Class cls, Class... clsArr) {
        return new Builder(cls, clsArr);
    }

    public static Builder builder(Qualified qualified) {
        return new Builder(qualified, new Qualified[0]);
    }

    public static Builder builder(Qualified qualified, Qualified... qualifiedArr) {
        return new Builder(qualified, qualifiedArr);
    }

    /* JADX INFO: renamed from: of */
    public static Component m499of(final Object obj, Class cls, Class... clsArr) {
        return builder(cls, clsArr).factory(new ComponentFactory() { // from class: com.google.firebase.components.Component$$ExternalSyntheticLambda1
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return Component.$r8$lambda$1XnijlikLlzJWfIqLOXy2V5iuHw(obj, componentContainer);
            }
        }).build();
    }

    public static Builder intoSetBuilder(Class cls) {
        return builder(cls).intoSet();
    }

    public static Component intoSet(final Object obj, Class cls) {
        return intoSetBuilder(cls).factory(new ComponentFactory() { // from class: com.google.firebase.components.Component$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return Component.$r8$lambda$OZ0j4a0bDeW_qgAe4WJTrUMuxVw(obj, componentContainer);
            }
        }).build();
    }

    public static class Builder {
        private final Set dependencies;
        private ComponentFactory factory;
        private int instantiation;
        private String name;
        private final Set providedInterfaces;
        private final Set publishedEvents;
        private int type;

        private Builder(Class cls, Class... clsArr) {
            this.name = null;
            HashSet hashSet = new HashSet();
            this.providedInterfaces = hashSet;
            this.dependencies = new HashSet();
            this.instantiation = 0;
            this.type = 0;
            this.publishedEvents = new HashSet();
            Preconditions.checkNotNull(cls, "Null interface");
            hashSet.add(Qualified.unqualified(cls));
            for (Class cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, "Null interface");
                this.providedInterfaces.add(Qualified.unqualified(cls2));
            }
        }

        private Builder(Qualified qualified, Qualified... qualifiedArr) {
            this.name = null;
            HashSet hashSet = new HashSet();
            this.providedInterfaces = hashSet;
            this.dependencies = new HashSet();
            this.instantiation = 0;
            this.type = 0;
            this.publishedEvents = new HashSet();
            Preconditions.checkNotNull(qualified, "Null interface");
            hashSet.add(qualified);
            for (Qualified qualified2 : qualifiedArr) {
                Preconditions.checkNotNull(qualified2, "Null interface");
            }
            Collections.addAll(this.providedInterfaces, qualifiedArr);
        }

        public Builder name(String str) {
            this.name = str;
            return this;
        }

        public Builder add(Dependency dependency) {
            Preconditions.checkNotNull(dependency, "Null dependency");
            validateInterface(dependency.getInterface());
            this.dependencies.add(dependency);
            return this;
        }

        public Builder alwaysEager() {
            return setInstantiation(1);
        }

        public Builder eagerInDefaultApp() {
            return setInstantiation(2);
        }

        private Builder setInstantiation(int i) {
            Preconditions.checkState(this.instantiation == 0, "Instantiation type has already been set.");
            this.instantiation = i;
            return this;
        }

        private void validateInterface(Qualified qualified) {
            Preconditions.checkArgument(!this.providedInterfaces.contains(qualified), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public Builder factory(ComponentFactory componentFactory) {
            this.factory = (ComponentFactory) Preconditions.checkNotNull(componentFactory, "Null factory");
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder intoSet() {
            this.type = 1;
            return this;
        }

        public Component build() {
            Preconditions.checkState(this.factory != null, "Missing required property: factory.");
            return new Component(this.name, new HashSet(this.providedInterfaces), new HashSet(this.dependencies), this.instantiation, this.type, this.factory, this.publishedEvents);
        }
    }
}
