.class final Lcom/miniclip/applinks/AppLinksHandler$1;
.super Ljava/lang/Object;
.source "AppLinksHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/applinks/AppLinksHandler;->handle(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/net/Uri;

.field final synthetic val$finalAppLinkDataJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miniclip/applinks/AppLinksHandler$1;->val$data:Landroid/net/Uri;

    iput-object p2, p0, Lcom/miniclip/applinks/AppLinksHandler$1;->val$finalAppLinkDataJsonString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miniclip/applinks/AppLinksHandler$1;->val$data:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksHandler$1;->val$finalAppLinkDataJsonString:Ljava/lang/String;

    # invokes: Lcom/miniclip/applinks/AppLinksHandler;->handleAppLink(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/miniclip/applinks/AppLinksHandler;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    return-void
.end method
