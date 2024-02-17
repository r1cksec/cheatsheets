#include <gtk/gtk.h>
#include <stdio.h>
#include <stdlib.h>

// you need the gtk+ library for compiling
// compile with: gcc file.c `pkg-config gtk+-2.0 --cflags --libs` 
char *text = NULL;

void change_text(GtkButton *trigger, gpointer textentry)
{
    g_free (text);
    text = g_strdup(gtk_entry_get_text(GTK_ENTRY(textentry)));
    printf("%s\n", text);
}

int main(int argc, char *argv[])
{
    gtk_init(&argc, &argv);
 
    // first window
    GtkWidget *warning_msg;
 
    warning_msg = gtk_message_dialog_new(NULL, GTK_DIALOG_MODAL, GTK_MESSAGE_WARNING, GTK_BUTTONS_NONE, "Hello\nWorld");
    gtk_dialog_add_buttons(GTK_DIALOG(warning_msg),"Agree", 100, "Disagree", 101, NULL);
    gtk_window_set_position (GTK_WINDOW(warning_msg), GTK_WIN_POS_CENTER);
    gtk_widget_set_size_request(warning_msg, 350, 150);
    gtk_window_set_resizable (GTK_WINDOW(warning_msg), FALSE);
    // color
    GdkColor color;
    gdk_color_parse ("grey92", &color);
    gtk_widget_modify_bg ( GTK_WIDGET(warning_msg), GTK_STATE_NORMAL, &color);

    gtk_dialog_run(GTK_DIALOG(warning_msg));
    gtk_widget_destroy(warning_msg);

    // second window
    GtkWidget *window;

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);

    // size
    gtk_widget_set_size_request(window, 320, 120);
    gtk_window_set_resizable (GTK_WINDOW(window), FALSE);
    // color
    gtk_widget_modify_bg ( GTK_WIDGET(window), GTK_STATE_NORMAL, &color);
    // position
    gtk_window_set_position (GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    // title with username
    FILE *fp;
    system("whoami > temp.txt");
    fp = fopen("temp.txt", "r");
    char fileTransfer [32];
    char *name;

    while (fgets(fileTransfer, 32, fp))
        name = fileTransfer;

    fclose(fp);
    remove("temp.txt");
    char buf[64];
    snprintf(buf, sizeof(buf), "Some string %s", name);
    gtk_window_set_title(GTK_WINDOW(window), buf);

    // box
    GtkWidget *fixed;
    fixed = gtk_fixed_new();
    gtk_container_add(GTK_CONTAINER(window), fixed);

    // label/text
    GtkWidget *label;
    label = gtk_label_new("Please enter something: ");
    gtk_widget_modify_font(label, pango_font_description_from_string("Tahoma 13"));
    gtk_fixed_put(GTK_FIXED(fixed), label, 10, -20);
    gtk_widget_set_size_request(label, 240, 100);

    // textentry
    GtkWidget *textentry;
    textentry = gtk_entry_new();
    gtk_fixed_put(GTK_FIXED(fixed), textentry, 35, 60);
    gtk_widget_set_size_request(textentry, 170, 30);
    // hide password input
    gtk_entry_set_visibility (GTK_ENTRY(textentry), FALSE);

    // button
    GtkWidget *button;
    button = gtk_button_new_with_label("Confirm");
    gtk_fixed_put(GTK_FIXED(fixed), button, 220, 60);
    gtk_widget_set_size_request(button, 70, 30);

    // signal
    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);
    g_signal_connect(button, "clicked", G_CALLBACK(change_text), textentry);
    g_signal_connect(button, "clicked", G_CALLBACK(gtk_main_quit), NULL);

    gtk_widget_show_all(window);
    gtk_main();
 
    return 0;
}

