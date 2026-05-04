.class public Lcom/chaquo/python/Reflector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/chaquo/python/Reflector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field private multipleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Member;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chaquo/python/Reflector;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    return-void
.end method

.method private getDeclaredFields()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 153
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v5, v6, :cond_0

    .line 155
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 156
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_2
    :cond_1
    return-object v0
.end method

.method private getDeclaredMethods()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 89
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v5, v6, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 92
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 93
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :catch_2
    :cond_1
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    invoke-static {v1}, Lcom/chaquo/python/Reflector;->getInstance(Ljava/lang/Class;)Lcom/chaquo/python/Reflector;

    move-result-object v2

    invoke-direct {v2}, Lcom/chaquo/python/Reflector;->getDeclaredMethods()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 103
    :try_start_3
    iget-object v4, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 103
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/chaquo/python/Reflector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/chaquo/python/Reflector;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/chaquo/python/Reflector;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chaquo/python/Reflector;

    if-eqz v0, :cond_0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/chaquo/python/Reflector;

    invoke-direct {v0, p0}, Lcom/chaquo/python/Reflector;-><init>(Ljava/lang/Class;)V

    .line 26
    sget-object v1, Lcom/chaquo/python/Reflector;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private isAccessible(I)Z
    .locals 0

    .line 0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 2

    .line 182
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/chaquo/python/Reflector;->isAccessible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private loadClasses()V
    .locals 6

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    .line 172
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 173
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/chaquo/python/Reflector;->isAccessible(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadFields()V
    .locals 4

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    .line 134
    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->getDeclaredFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 135
    invoke-direct {p0, v1}, Lcom/chaquo/python/Reflector;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadMethod(Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/chaquo/python/Reflector;->multipleMethods:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->multipleMethods:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadMethods()V
    .locals 5

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chaquo/python/Reflector;->multipleMethods:Ljava/util/Map;

    .line 62
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-direct {p0, v3}, Lcom/chaquo/python/Reflector;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const-string v4, "<init>"

    invoke-direct {p0, v3, v4}, Lcom/chaquo/python/Reflector;->loadMethod(Ljava/lang/reflect/Member;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->getDeclaredMethods()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 68
    invoke-direct {p0, v1}, Lcom/chaquo/python/Reflector;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/chaquo/python/Reflector;->loadMethod(Ljava/lang/reflect/Member;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized dir()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadMethods()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadFields()V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadClasses()V

    .line 38
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->multipleMethods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 43
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadFields()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getMethods(Ljava/lang/String;)[Ljava/lang/reflect/Member;
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadMethods()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->multipleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    new-array p1, v1, [Ljava/lang/reflect/Member;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Member;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 52
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Member;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/reflect/Member;

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNestedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chaquo/python/Reflector;->loadClasses()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chaquo/python/Reflector;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
