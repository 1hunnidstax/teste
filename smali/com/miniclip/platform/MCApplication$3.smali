.class Lcom/miniclip/platform/MCApplication$3;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/platform/MCApplication;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/platform/MCApplication;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$3;->this$0:Lcom/miniclip/platform/MCApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 416
    # getter for: Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$200()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/miniclip/platform/MCApplication;->nativeNewIntentDataString(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->access$300(Ljava/lang/String;)V

    .line 417
    return-void
.end method
