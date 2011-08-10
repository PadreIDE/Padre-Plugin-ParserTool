package Padre::Plugin::ParserTool::FBP;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.01';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Parser Tool"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxDEFAULT_DIALOG_STYLE | Wx::wxRESIZE_BORDER,
	);

	$self->{m_staticText1} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Input Text"),
	);

	$self->{input} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::wxDefaultPosition,
		[ 200, 100 ],
		Wx::wxTE_DONTWRAP | Wx::wxTE_MULTILINE,
	);
	$self->{input}->SetMinSize( [ 200, 100 ] );

	Wx::Event::EVT_TEXT(
		$self,
		$self->{input},
		sub {
			shift->refresh(@_);
		},
	);

	$self->{m_staticText3} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Parser Module"),
	);

	$self->{module} = Wx::ComboBox->new(
		$self,
		-1,
		"PPI",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[
			"PPI",
		],
		Wx::wxCB_DROPDOWN,
	);

	$self->{m_staticText4} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Parser Function"),
	);

	$self->{function} = Wx::ComboBox->new(
		$self,
		-1,
		"PPI::Document->new(\\\$_)",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);

	$self->{m_staticText6} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Dumper Format"),
	);

	$self->{dumper} = Wx::Choice->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[
			"Stringify",
			"Devel::Dumpvar",
			"Data::Dumper",
			"PPI::Dumper",
		],
	);
	$self->{dumper}->SetSelection(0);

	Wx::Event::EVT_CHOICE(
		$self,
		$self->{dumper},
		sub {
			shift->refresh(@_);
		},
	);

	$self->{m_staticText2} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Output Structure"),
	);

	$self->{output} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::wxDefaultPosition,
		[ 400, 200 ],
		Wx::wxTE_DONTWRAP | Wx::wxTE_MULTILINE | Wx::wxTE_READONLY,
	);
	$self->{output}->SetMinSize( [ 400, 200 ] );
	$self->{output}->SetBackgroundColour(
		Wx::Colour->new( 240, 240, 240 )
	);

	my $bSizer6 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer6->Add( $self->{m_staticText1}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$bSizer6->Add( $self->{input}, 1, Wx::wxEXPAND, 0 );

	my $bSizer7 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer7->Add( $self->{m_staticText3}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_LEFT | Wx::wxALL, 5 );
	$bSizer7->Add( $self->{module}, 0, Wx::wxEXPAND | Wx::wxLEFT, 5 );
	$bSizer7->Add( $self->{m_staticText4}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_LEFT | Wx::wxALL, 5 );
	$bSizer7->Add( $self->{function}, 0, Wx::wxEXPAND | Wx::wxLEFT, 3 );
	$bSizer7->Add( $self->{m_staticText6}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_LEFT | Wx::wxALL, 5 );
	$bSizer7->Add( $self->{dumper}, 0, Wx::wxEXPAND | Wx::wxLEFT, 3 );

	my $bSizer51 = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$bSizer51->Add( $bSizer6, 1, Wx::wxEXPAND, 5 );
	$bSizer51->Add( $bSizer7, 1, Wx::wxEXPAND, 5 );

	my $bSizer2 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer2->Add( $bSizer51, 0, Wx::wxEXPAND, 5 );
	$bSizer2->Add( $self->{m_staticText2}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$bSizer2->Add( $self->{output}, 1, Wx::wxEXPAND, 0 );

	my $bSizer1 = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$bSizer1->Add( $bSizer2, 1, Wx::wxALL | Wx::wxEXPAND, 5 );

	$self->SetSizerAndFit($bSizer1);
	$self->Layout;

	return $self;
}

sub refresh {
	$_[0]->main->error('Handler method refresh for event input.OnText not implemented');
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

