.class Lcom/miniclip/platform/MCApplication$5;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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
    .line 465
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$5;->this$0:Lcom/miniclip/platform/MCApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 468
    new-instance v1, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$000()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 470
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 471
    const v2, 0x104000a

    new-instance v3, Lcom/miniclip/platform/MCApplication$5$1;

    invoke-direct {v3, p0}, Lcom/miniclip/platform/MCApplication$5$1;-><init>(Lcom/miniclip/platform/MCApplication$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/miniclip/platform/MCApplication$5$2;

    invoke-direct {v3, p0}, Lcom/miniclip/platform/MCApplication$5$2;-><init>(Lcom/miniclip/platform/MCApplication$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 489
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 490
    return-void
.end method
