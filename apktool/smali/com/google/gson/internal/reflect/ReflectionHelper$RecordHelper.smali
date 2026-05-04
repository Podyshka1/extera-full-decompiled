.class abstract Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/reflect/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RecordHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
.end method

.method abstract getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method

.method abstract getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
.end method

.method abstract isRecord(Ljava/lang/Class;)Z
.end method
