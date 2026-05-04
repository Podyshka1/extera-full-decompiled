.class Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public messageInfoFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/MessageInfo;
    .locals 1

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This should never be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
