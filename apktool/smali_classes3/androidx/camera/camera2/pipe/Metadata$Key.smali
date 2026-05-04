.class public final Landroidx/camera/camera2/pipe/Metadata$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Metadata$Key$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

.field private static final keys:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lkotlin/reflect/KClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->type:Lkotlin/reflect/KClass;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/Metadata$Key;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public static final synthetic access$getKeys$cp()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getType$p(Landroidx/camera/camera2/pipe/Metadata$Key;)Lkotlin/reflect/KClass;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->type:Lkotlin/reflect/KClass;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata.Key("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
