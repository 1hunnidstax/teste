.class Lcom/miniclip/platform/MCApplication$4;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication;->onLowMemory()V
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
    .line 431
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$4;->this$0:Lcom/miniclip/platform/MCApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 434
    # invokes: Lcom/miniclip/platform/MCApplication;->nativeLowMemory()V
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$400()V

    .line 435
    return-void
.end method
