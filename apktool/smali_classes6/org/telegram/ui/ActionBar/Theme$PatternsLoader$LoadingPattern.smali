.class Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingPattern"
.end annotation


# instance fields
.field public accents:Ljava/util/ArrayList;

.field public pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->accents:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;-><init>()V

    return-void
.end method
