.class public final synthetic Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$0:Ljava/io/File;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLoader;->$r8$lambda$gOJ-HwLnGci070vSdd2ZIzBwZVo(Ljava/io/File;Ljava/nio/file/Path;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
