.class final Lcom/miniclip/platform/MCApplication$1;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication;->requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$explanation:Ljava/lang/String;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$1;->val$explanation:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/platform/MCApplication$1;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 323
    new-instance v1, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$000()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/miniclip/platform/MCApplication$1;->val$explanation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 326
    const v2, 0x104000a

    new-instance v3, Lcom/miniclip/platform/MCApplication$1$1;

    invoke-direct {v3, p0}, Lcom/miniclip/platform/MCApplication$1$1;-><init>(Lcom/miniclip/platform/MCApplication$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 335
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 336
    return-void
.end method
