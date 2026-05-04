.class public abstract Lcom/google/firebase/remoteconfig/ConfigUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Set;)Lcom/google/firebase/remoteconfig/ConfigUpdate;
    .locals 1

    .line 27
    new-instance v0, Lcom/google/firebase/remoteconfig/AutoValue_ConfigUpdate;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/AutoValue_ConfigUpdate;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract getUpdatedKeys()Ljava/util/Set;
.end method
