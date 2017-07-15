.class final Lcom/miniclip/ads/FyberWrapper$4;
.super Ljava/lang/Object;
.source "FyberWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/FyberWrapper;->updateUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miniclip/ads/FyberWrapper$4;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    # getter for: Lcom/miniclip/ads/FyberWrapper;->fyberSettings:Lcom/fyber/Fyber$Settings;
    invoke-static {}, Lcom/miniclip/ads/FyberWrapper;->access$100()Lcom/fyber/Fyber$Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$4;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$Settings;->updateUserId(Ljava/lang/String;)V

    .line 172
    return-void
.end method
