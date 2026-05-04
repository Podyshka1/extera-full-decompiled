.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;->$r8$lambda$gfm2UPehN4dX3BgyEYhLjM_LjNo(Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/List;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
