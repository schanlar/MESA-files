! inlist to create the Helium core


&star_job

    show_log_description_at_start = .false.

  ! save a model at the end of the run
    save_model_when_terminate = .true.
    save_model_filename = 'He_core_simple.mod'

    change_initial_net = .true.
    new_net_name = 'approx21_cr60_plus_co56.net'

    !change_v_flag = .true.
    !new_v_flag = .true.

    !new_rotation_flag = .true.
    !change_rotation_flag = .true.



  ! display on-screen plots
    pgstar_flag = .true.

/ !end of star_job namelist


&controls

  ! starting specifications
    initial_mass = 30 ! in Msun units
    initial_z = 2d-2

  ! rotational mixing coeffs
   !am_nu_visc_factor = 0
   !am_D_mix_factor = 0.0333333333333333d00
   !D_DSI_factor = 0
   !D_SH_factor = 1
   !D_SSI_factor = 1
   !D_ES_factor = 1
   !D_GSF_factor = 1
   !D_ST_factor = 1



  ! stop when the center mass fraction of h1 drops below this limit
    xa_central_lower_limit_species(1) = 'h1'
    xa_central_lower_limit(1) = 1d-6

  ! extra spatial resolution
    mesh_delta_coeff = 1


    write_header_frequency = 1

/ ! end of controls namelist
