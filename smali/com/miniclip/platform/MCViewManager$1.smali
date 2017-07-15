.class Lcom/miniclip/platform/MCViewManager$1;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager;->initImpl(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/platform/MCViewManager;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/platform/MCViewManager;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$1;->this$0:Lcom/miniclip/platform/MCViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$1;->this$0:Lcom/miniclip/platform/MCViewManager;

    # invokes: Lcom/miniclip/platform/MCViewManager;->setSystemUiVisibility()V
    invoke-static {v0}, Lcom/miniclip/platform/MCViewManager;->access$500(Lcom/miniclip/platform/MCViewManager;)V

    .line 210
    return-void
.end method
