.class Lcom/google/gson/internal/bind/EnumTypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/EnumTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2

    .line 40
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 41
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-nez p2, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 48
    :cond_1
    new-instance p2, Lcom/google/gson/internal/bind/EnumTypeAdapter;

    invoke-direct {p2, p1, v1}, Lcom/google/gson/internal/bind/EnumTypeAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/internal/bind/EnumTypeAdapter$1;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v1
.end method
