.class public LP/d;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final synthetic a:LP/e;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;ZLP/e;)V
    .locals 0

    .line 1
    iput-object p3, p0, LP/d;->a:LP/e;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LP/d;->a:LP/e;

    invoke-static {p1, p2, v0}, LP/f;->b(Ljava/lang/String;Landroid/os/Bundle;LP/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
