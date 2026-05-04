.class public final Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# static fields
.field private static final NULL_INSTANCE_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->NULL_INSTANCE_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-object v0
.end method
