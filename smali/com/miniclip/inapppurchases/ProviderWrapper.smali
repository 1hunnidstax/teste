.class public interface abstract Lcom/miniclip/inapppurchases/ProviderWrapper;
.super Ljava/lang/Object;
.source "ProviderWrapper.java"


# virtual methods
.method public abstract finishPurchase(Ljava/lang/String;)V
.end method

.method public abstract register(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestPendingPurchases()V
.end method

.method public abstract requestPurchase(Ljava/lang/String;Z)V
.end method

.method public abstract restorePurchases()V
.end method
