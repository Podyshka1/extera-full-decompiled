.class public Lorg/telegram/ui/Components/SuggestionOffer$Row;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SuggestionOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public final info:Lorg/telegram/ui/Components/Text;

.field public final title:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/Components/Text;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestionOffer$Row;->title:Lorg/telegram/ui/Components/Text;

    .line 45
    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestionOffer$Row;->info:Lorg/telegram/ui/Components/Text;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestionOffer$Row;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
