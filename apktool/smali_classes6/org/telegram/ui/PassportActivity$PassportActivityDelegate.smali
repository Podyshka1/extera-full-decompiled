.class interface abstract Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PassportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PassportActivityDelegate"
.end annotation


# virtual methods
.method public abstract deleteValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;)V
.end method

.method public abstract saveFile(Lorg/telegram/tgnet/TLRPC$TL_secureFile;)Lorg/telegram/messenger/SecureDocument;
.end method

.method public abstract saveValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/SecureDocument;Ljava/util/ArrayList;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/SecureDocument;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;)V
.end method
