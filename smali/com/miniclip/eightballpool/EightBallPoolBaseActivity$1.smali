.class Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$1;
.super Ljava/lang/Object;
.source "EightBallPoolBaseActivity.java"

# interfaces
.implements Lcom/miniclip/scriptsystem/ScriptSystemInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->loadExternalModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;


# direct methods
.method constructor <init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$1;->this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutomationLabel()V
    .locals 5

    .prologue
    .line 51
    invoke-static {}, Lcom/miniclip/scriptsystem/ScriptSystem;->generateGlobalId()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "idString":Ljava/lang/String;
    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v3, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    sget v4, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method
